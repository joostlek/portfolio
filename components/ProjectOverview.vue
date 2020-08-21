<template>
  <div class="container">
    <h3>My Projects</h3>
    <div class="card-container">
      <ProjectCard v-for="(project, idx) in projects" :key="idx" :project="project" class="card" />
    </div>
  </div>
</template>

<script>
import ProjectCard from '@/components/ProjectCard'
export default {
  name: 'ProjectOverview',
  components: { ProjectCard },
  props: {
    projects: {
      type: Array,
      required: true
    }
  }
}
</script>

<style lang="scss" scoped>
.container {
  width: 100%;
  height: 100%;
  margin-top: 40px;
}
.card-container {
  padding-top: 1em;
  column-gap: 1em;

  @media only screen and (min-width: 1024px) {
    column-count: 3;
  }

  @media only screen and (max-width: 1023px) and (min-width: 768px) {
    column-count: 2;
  }

  @media only screen and (max-width: 767px) and (min-width: 540px) {
    column-count: 1;
  }

  .card {
    padding: 1em;
    margin: 0.75em 0 0.75em;
  }
}
</style>
