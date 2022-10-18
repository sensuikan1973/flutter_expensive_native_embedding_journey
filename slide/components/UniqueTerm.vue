<script setup lang="ts">
import { ref } from 'vue';
const props = defineProps<{
  val: string;
}>();
const val = ref(props.val);
</script>

<template>
  <em>{{ val }}</em>
</template>
