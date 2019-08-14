<template>
	<header id="header" class="header">
		<h3>{{ projectName }}</h3>
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
	data() {
		return {
			projectName: project.name
		};
	}
};
</script>

<style lang="scss">
@import '~tools';

.header {
	// Header styles
	position: fixed;
	top: 0;
	left: 0;

	width: 100%;
	text-align: center;
}
</style>
