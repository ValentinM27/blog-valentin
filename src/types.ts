export interface Paragraph {
  subtitle?: string;
  content?: string;
}

export interface Article {
  id: number;
  title?: string;
  date?: string;
  tags?: string[];
  summary?: string;
  pictureUrl?: string;
  paragraphs: Paragraph[];
}
