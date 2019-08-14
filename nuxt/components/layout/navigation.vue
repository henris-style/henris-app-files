<template>
	<nav class="navigation">
		<ul class="navigation__list">
			<li class="navigation__item" v-for="(item, idx) in navigation" :key="idx">
				<nuxt-link class="navigation__link" :to="item.url">
					<span class="navigation__text">
						{{ item.title }}
					</span>
				</nuxt-link>
			</li>
		</ul>
	</nav>
</template>

<script>
export default {
	data: () => {
		navigation: [
			{
				title: 'Home',
				url: '/'
			}
		];
	}
};
</script>

<style lang="scss">
@import '~tools';
</style>
