<script setup lang="ts">
import { ref } from 'vue';
const props = defineProps<{
  val: string;
}>();
const val = ref(props.val);
</script>

<template>
  <span class="unique_technical_term">{{ val }}</span>
</template>
