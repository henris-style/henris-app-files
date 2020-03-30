<template>
	<main class="page page--home">
		<HenrisIntro></HenrisIntro>
	</main>
</template>

<script lang="ts">
import Vue from 'vue'
import HenrisIntro from '~/components/intro.vue';

export default Vue.extend({
	components: { 
    HenrisIntro 
  }
})
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
