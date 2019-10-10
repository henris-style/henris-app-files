<template>
	<header id="header" class="header">
		<h3 class="header__logo">
			<NuxtLink to="/">
				{{ projectName }}
			</NuxtLink>
		</h3>
		<LayoutNavigation></LayoutNavigation>
	</header>
</template>

<script>
import project from '~/package.json';
import LayoutNavigation from '~/components/layout/navigation.vue';
export default {
	components: {
		LayoutNavigation
	},
	data: () => ({
		projectName: project.name
	})
};
</script>

<style lang="scss">
@import '~tools';

.header {
	position: fixed;
	top: 0;
	left: 0;
	display: flex;
	justify-content: space-between;
	width: 100%;
	text-align: center;
	padding: grid(1 2);
	&__logo {
		font-size: 1.5rem;
		line-height: 1.5rem;
		padding: 1rem 0;
		a {
			text-decoration: none;
		}
	}
}
</style>
