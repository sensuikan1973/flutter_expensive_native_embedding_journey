<script setup lang="ts">
import { ref } from 'vue';

const props = defineProps({
  title: {
    type: String,
  },
});

const title = ref(props.title);
</script>

<template>
  <div class="absolute top-0 left-0 p-2">
    <div style="font-size: 16px">{{ title }}</div>
  </div>
</template>
