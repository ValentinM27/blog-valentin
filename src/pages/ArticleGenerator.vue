<template>
  <div class="generator-container">
    <div class="form q-gutter-md" style="max-width: 680px">
      <q-input filled v-model="currentArticle.title" label="Titre" />
      <q-input
        v-model="currentArticle.summary"
        filled
        label="Résumé"
        type="textarea"
      />
      <q-input filled v-model="currentTag" label="Tag" />
      <q-btn
        text-color="white"
        color="secondary"
        label="Ajouter"
        @click="pushTag()"
      />
      <hr />
      <q-input
        filled
        v-model="currentParagraph.subtitle"
        label="Titre section (Optionnel)"
      />
      <q-input
        v-model="currentParagraph.content"
        filled
        label="Paragraphe"
        type="textarea"
      />
      <q-btn
        text-color="white"
        color="secondary"
        label="Ajouter"
        @click="pushParagraph()"
      />
    </div>
    <pre>{{ JSON.stringify(currentArticle, null, 2) }}</pre>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { Article, Paragraph } from 'src/types';
import { date } from 'quasar';

// Ui const
const currentArticle = ref({
  date: date.formatDate(Date.now(), 'DD-MM-YYYY'),
  paragraphs: [] as Paragraph[],
  tags: [] as string[],
} as Article);
const currentParagraph = ref({} as Paragraph);
const currentTag = ref('');

// Ui functions
const pushTag = () => {
  if (currentTag.value.length === 0) return;
  currentArticle.value.tags?.push(currentTag.value);
  currentTag.value = '';
};

const pushParagraph = () => {
  currentArticle.value.paragraphs.push(currentParagraph.value);
  currentParagraph.value = {} as Paragraph;
};
</script>
