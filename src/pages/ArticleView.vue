<template>{{ props.idarticle }}</template>

<script setup lang="ts">
import { ref } from 'vue';

const props = defineProps({
  idarticle: { type: String, required: true },
});
</script>
