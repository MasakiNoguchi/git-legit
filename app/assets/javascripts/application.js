//= require rails-ujs
//= require_tree .
//= require algolia/v3/algoliasearch.min
//= require hogan

// var client = algoliasearch("B8QPQJJU6A", "948358af295653cb435ff42732ad2d6d");
// var index = client.initIndex('YourIndexName');
// index.search('something', { hitsPerPage: 10, page: 0 })
//   .then(function searchDone(content) {
//     console.log(content)
//   })
//   .catch(function searchFailure(err) {
//     console.error(err);
//   });
// autocomplete('#query',
// { hint: false }, {
//     source: autocomplete.sources.hits(index, {hitsPerPage: 5}),
//     //value to be displayed in input control after user's suggestion selection
//     displayKey: 'name',
//     //hash of templates used when rendering dataset
//     templates: {
//         //'suggestion' templating function used to render a single suggestion
//         suggestion: function(suggestion) {
//           return '<span>' +
//             suggestion._highlightResult.name.value + '</span><span>' +
//             suggestion._highlightResult.team.value + '</span>';
//         }
//     }
// });
