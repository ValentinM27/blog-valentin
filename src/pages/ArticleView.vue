<template>
  <div class="article-container">
    <q-btn
      icon="fa-solid fa-arrow-left"
      label="Retour à l'accueil"
      outline
      color="secondary"
      rounded
      size="sm"
      :to="{
        path: '/',
      }"
    />
    <div class="article-title">{{ article.title }}</div>
    <div class="article-date">
      {{ article.date }} |
      <q-chip v-for="tag in article.tags" :key="tag" class="tag-ship">
        {{ tag.toLowerCase() }}
      </q-chip>
    </div>
    <div class="article-illustration">
      <img :src="article.pictureUrl" />
    </div>
    <div class="article-content-container">
      <div v-for="paragraph in article.paragraphs" :key="paragraph.id">
        <div class="paragraph-title" v-if="paragraph.subtitle">
          {{ paragraph.subtitle }}
        </div>
        <div class="paragraph-content">
          {{ paragraph.content }}
        </div>
      </div>
    </div>
    <div class="align-center">
      <q-btn
        icon="fa-solid fa-arrow-up"
        label="Haut de page"
        outline
        color="secondary"
        rounded
        size="sm"
        @click="returnTop()"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { ArticlesStore } from 'src/stores/articlesStore';
import { Article } from 'src/types';

// Ui const and store
const useArticlesStore = ArticlesStore();
const article = ref({} as Article);

const props = defineProps({
  idarticle: { type: String, required: true },
});

const returnTop = () => {
  window.scrollTo({
    top: 0,
    behavior: 'smooth',
  });
};

onMounted(() => {
  article.value = useArticlesStore.getArticlesById(parseInt(props.idarticle));
});
</script>
