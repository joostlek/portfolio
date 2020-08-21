import Vue from 'vue'
import { Octokit } from '@octokit/rest'

const octokit = {}
octokit.install = (Vue) => {
  Vue.prototype.$octokit = new Octokit();
}

Vue.use(octokit)
