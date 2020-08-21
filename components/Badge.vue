<template>
  <div>
    {{ count }} {{ type }}
  </div>
</template>

<script>
export default {
  name: 'Badge',
  props: {
    type: {
      type: String,
      required: true
    },
    count: {
      type: Number,
      required: true
    }
  }
}
</script>

<style scoped>

</style>
