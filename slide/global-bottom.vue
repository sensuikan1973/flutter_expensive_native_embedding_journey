<!-- https://github.com/slidevjs/slidev/issues/64#issuecomment-838084965 -->
<template>
  <!-- END page で "(N + 1) / N" というページ表記になるのを回避するために、hasNext を参照している -->
  <!-- https://sli.dev/custom/vue-context.html#slidev-nav -->
  <!-- https://github.com/slidevjs/slidev/blob/main/packages/client/logic/nav.ts -->
  <footer v-if="$slidev.nav.hasNext" class="absolute bottom-0 right-0 p-2">
    <SlideCurrentNo /> / <SlidesTotal />
  </footer>
</template>
