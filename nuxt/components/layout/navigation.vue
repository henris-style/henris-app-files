<template>
	<nav class="navigation">
		<ul class="navigation__list">
			<li v-for="(item, idx) in nav" :key="idx" class="navigation__item">
				<nuxt-link class="navigation__link" :to="item.path">
					<span class="navigation__text">
						{{ item.name }}
					</span>
				</nuxt-link>
			</li>
		</ul>
	</nav>
</template>

<script>
export default {
	computed: {
		nav() {
			return this.$router.options.routes.map((route) => {
				return {
					name: route.name,
					path: route.path
				};
			});
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
