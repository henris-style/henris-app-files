<template>
	<nav class="navigation">
		<ul class="navigation__list">
			<li v-for="(item, idx) in nav" :key="idx" class="navigation__item">
				<NuxtLink class="navigation__link" :to="item.path" :aria-label="`Go to ${subitem.name}`">
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
								return { name: subroute.name.substr(route.name.length + 1), path: subroute.path };
							})
					};
				});
		}
	}
}
</script>

<style lang="scss">
@import '~tools';
.navigation {
	&__list {
		display: flex;
	}
	&__link {
		display: block;
		padding: 1rem;
		color: currentColor;
		&.active {
			color: color(Blue);
		}
	}
	&__text {
		font-size: 1rem;
		line-height: 1.5;
		color: currentColor;
	}
}
</style>
