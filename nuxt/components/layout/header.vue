<template>
	<header id="header" class="header">
		<h3 class="header__logo">
			<NuxtLink to="/">
				{{ projectName }}
			</NuxtLink>
		</h3>
		<NavigationTrigger></NavigationTrigger>
		<NavigationMenu></NavigationMenu>
	</header>
</template>

<script>
import project from '~/package.json';
import NavigationMenu from '~/components/layout/navigation/menu.vue';
import NavigationTrigger from '~/components/layout/navigation/trigger.vue';
export default {
	components: {
		NavigationMenu,
		NavigationTrigger
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
