enum SortedByCriteria {
  relevanceDesc('relevance_desc'),
  relevanceAsc('relevance_asc'),
  popularityDesc('popularity_desc'),
  popularityAsc('popularity_asc'),
  releaseDateDesc('release_date_desc'),
  releaseDateAsc('release_date_asc'),
  titleDesc('title_desc'),
  titleAsc('title_asc');

  const SortedByCriteria(this.apiName);

  final String apiName;
}
