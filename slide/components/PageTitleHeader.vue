<script setup lang="ts">
import { ref } from 'vue';
const props = defineProps<{
  section: string;
  title: string;
}>();
const section = ref(props.section);
const title = ref(props.title);
</script>

<template>
  <div class="absolute top-0 left-0 p-2">
    <span style="font-size: 16px">{{ section }}</span>
    :
    <b style="font-size: 16px">{{ title }}</b>
  </div>
</template>
