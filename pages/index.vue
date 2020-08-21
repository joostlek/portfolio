<template>
  <div class="container">
    <ProjectOverview :projects="projects" />
  </div>
</template>

<script>
import ProjectOverview from '@/components/ProjectOverview'
export default {
  components: { ProjectOverview },
  async asyncData (ctx) {
    const projects = await ctx.$content('projects').fetch()
    return { projects }
  }
}
</script>

<style>
.container {
  margin: 0 auto;
  min-height: 100vh;
  width: 75%;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
}
</style>
