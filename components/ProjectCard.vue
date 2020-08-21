<template>
  <div class="card">
    <div class="card-content">
      <h4>{{ project.name }}</h4>
      <p>
        {{ project.description }}
      </p>
      <div v-if="!!project.github" class="badges">
        <Badge :count="project.github.stars" type="stars" />
        <Badge :count="project.github.forks" type="forks" />
      </div>
    </div>
  </div>
</template>

<script>
import Badge from '@/components/Badge'
export default {
  name: 'ProjectCard',
  components: { Badge },
  props: {
    project: {
      type: Object,
      required: true
    }
  },
  async mounted () {
    await this.getGithubInfo();
  },
  methods: {
    async getGithubInfo() {
      const [owner, repo] = this.project.githubRepository.split('/');
      const { data } = await this.$octokit.repos.get({
        owner,
        repo,
      });
      this.project.github = { stars: data.stargazers_count, forks: data.forks_count }
    },
  }
}
</script>

<style lang="scss" scoped>

.card {
  border-radius: 8px;
  padding: 16px 24px;
  display: inline-block;
  width: 100%;
  transition: box-shadow 300ms;
  box-shadow: 0 0 20px 0 rgba(124, 124, 124, 0.2);

  &:hover {
    box-shadow: 0 0 20px 0 rgba(124, 124, 124, 0.4);
  }

  .card-content {
    text-align: left;

    .badges {
      margin-top: 1em;
      display: flex;
      justify-content: space-evenly;
    }
  }
}
</style>
