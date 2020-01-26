// $.getJSON("https://api.domain.com.au/v1/properties/_suggest?terms=nsw?channel=Residential?pageNumber=0&api_key=key_c4c426fc0a4d4a91eab6702bc42e5730")
//   .done(function(result){
//     console.log(result);
//     for(i = 0; i < result.length; i++) {
//       $.getJSON(`https://api.domain.com.au/v1/properties/${result[i].id}?api_key=key_c4c426fc0a4d4a91eab6702bc42e5730`)
//       .done(function(image){
//         console.log(image);
//         // if(image.status !== "OnMarket") {
//         if(image.photos[0] === undefined) {
//           $("#output").append(`
//             <div class="inline">
//             <div class="border">
//             <a href=""><img class="prelude" src="https://placebear.com/200/300"></a><br>
//             <div class="align-left">
//             <strong>$Neg</strong><br>
//             ${image.streetAddress}, ${image.suburb}<br>
//             <img class="logo" src="https://c7.uihere.com/icons/990/543/695/bed-2bcc00ee5d9ffb499c5f90be3fc68ec0.png">???
//             <img class="logo" src="https://www.shareicon.net/data/512x512/2016/10/22/846720_clean_512x512.png">???
//             <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Car_with_Driver-Silhouette.svg/1221px-Car_with_Driver-Silhouette.svg.png">???
//             <img class="logo" src="https://static.thenounproject.com/png/560015-200.png">???m²
//             </div>
//             </div>
//             </div>
//           `)
//         }
//           $("#output").append(`
//             <div class="inline">
//             <div class="border">
//             <a href=""><img class="prelude" src=${image.photos[0].fullUrl}></a><br>
//             <div class="align-left">
//             <strong>$Neg</strong><br>
//             ${image.streetAddress}, ${image.suburb}<br>
//             <img class="logo" src="https://c7.uihere.com/icons/990/543/695/bed-2bcc00ee5d9ffb499c5f90be3fc68ec0.png">${image.bedrooms}
//             <img class="logo" src="https://www.shareicon.net/data/512x512/2016/10/22/846720_clean_512x512.png">${image.bathrooms}
//             <img class="logo" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Car_with_Driver-Silhouette.svg/1221px-Car_with_Driver-Silhouette.svg.png">${image.carSpaces}
//             <img class="logo" src="https://static.thenounproject.com/png/560015-200.png">${image.areaSize}m²
//             </div>
//             </div>
//             </div>
//           `)
//         // }
//       })
//     }
//   })
// .fail(console.warn)
