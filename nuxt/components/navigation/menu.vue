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
	}
};
</script>

<style lang="scss">
@import '~tools';
.navigation {
	&__list {
		display: flex;
	}
	&__link {
		display: block;
		font-size: 1.5rem;
		line-height: 1.5rem;
		padding: 1rem 1rem;
		color: currentColor;
		text-decoration: none;
		&.active {
			text-decoration: underline;
		}
	}
	&__text {
		text-decoration: none;
		font-size: 1.25rem;
		line-height: 1.5;
		color: currentColor;
	}
}
</style>
