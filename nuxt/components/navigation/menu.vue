<template>
	<nav class="navigation" :class="{ 'navigation--active': menuActive }">
		<ul class="navigation__list">
			<li v-for="(item, idx) in nav" :key="idx" class="navigation__item">
				<NuxtLink class="navigation__link" :to="item.path" :aria-label="`Go to ${item.name}`">
					<span class="navigation__text">
						{{ item.name }}
					</span>
				</NuxtLink>
				<ul v-if="item.children.length > 0" class="navigation__sublist">
					<li v-for="(subitem, idy) in item.children" :key="idy" class="navigation__item navigation__subitem">
						<NuxtLink class="navigation__link navigation__sublink" :to="subitem.path" :aria-label="`Go to ${subitem.name}`">
							<span class="navigation__text navigation__subtext">
								{{ subitem.name }}
							</span>
						</NuxtLink>
					</li>
				</ul>
			</li>
		</ul>
	</nav>
</template>

<script>
export default {
	computed: {
		nav() {
			return this.$router.options.routes
				.filter((route) => route.path.indexOf(':') < 0)
				.filter((route) => route.path.indexOf('404') < 0)
				.filter((route) => route.path.substring(1).indexOf('/') < 0)
				.filter((route) => route.name !== 'index')
				.map((route) => {
					return {
						name: route.name,
						path: route.path,
						children: this.$router.options.routes
							.filter((route) => route.path.indexOf(':') < 0)
							.filter((subroute) => subroute.path.indexOf(route.name) > 0 && subroute.path !== route.path)
							.map((subroute) => {
								return {
									name: subroute.name.substr(route.name.length + 1),
									path: subroute.path
								};
							})
					};
				});
		},
		menuActive: {
			get() {
				return this.$store.state.ui.menu.active;
			},
			set(value) {
				this.$store.dispatch('ui/setMenuActive', value);
			}
		}
	},
	watch: {
		$route: function() {
			this.$store.dispatch('ui/setMenuActive', false);
		}
	}
};
</script>

<style lang="scss">
@import '~tools';
.navigation {
	&__list {
		display: flex;
		@media #{$medium-down} {
			flex-direction: column;
			transform: translateY(100%);
			opacity: 0;
			transition: transform $base-transition $base-cubic-bezier, opacity $base-transition $base-cubic-bezier;
		}
	}
	&__link {
		display: block;
		color: currentColor;
		font-size: 1.5rem;
		line-height: 1.5rem;
		text-decoration: none;
		padding: 1rem 1rem;
		&.active {
			text-decoration: underline;
		}
	}
	&__text {
		color: currentColor;
		font-size: 1.25rem;
		line-height: 1.5;
		text-decoration: none;
	}
	@media #{$medium-down} {
		position: fixed;
		z-index: 1;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0;
		display: flex;
		justify-content: center;
		align-items: center;
		background-color: white;
		transform: translateY(-100%);
		&--active {
			transform: translateY(0%);
			.navigation__list {
				transform: translateY(0%);
				opacity: 1;
			}
		}
	}
}
</style>
