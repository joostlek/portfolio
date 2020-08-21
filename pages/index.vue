<template>
  <div class="container">
    <Heading />
    <AboutMe />
    <ProjectOverview :projects="projects" />
  </div>
</template>

<script>
import ProjectOverview from '@/components/ProjectOverview'
import Heading from '@/components/Heading'
import AboutMe from '@/components/AboutMe'
export default {
  components: { AboutMe, Heading, ProjectOverview },
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
