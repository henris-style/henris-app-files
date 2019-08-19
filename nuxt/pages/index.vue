<template>
	<main class="page page--home">
		<HenrisIntro></HenrisIntro>
	</main>
</template>

<script>
import HenrisIntro from '~/components/intro.vue';

export default {
	components: { HenrisIntro }
};
</script>

<style lang="scss">
@import '~tools';
.page {
	&--home {
		height: 100vh;
		display: flex;
		align-items: center;
		justify-content: center;
	}
}
</style>
