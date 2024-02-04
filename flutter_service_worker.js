'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "4dfc7510fa124b6299c9edc4f65f6884",
"index.html": "317f3c0174ba0745e845dfc6d82ec561",
"/": "317f3c0174ba0745e845dfc6d82ec561",
"main.dart.js": "b7d1293c831b6f5ee3a659c5f44072e5",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-512.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-512.png": "181402829826fafa28c5c34e1705536e",
"manifest.json": "c7a72c719defaf06042dd39264349484",
"assets/AssetManifest.json": "f05a5aa3de5d5d0ee6b7b7ee7b306bef",
"assets/loading.gif": "c3ea32ae03f54f1caeb417587c2c8ab8",
"assets/NOTICES": "14537ea45d5f3fe89538c4462c676eef",
"assets/FontManifest.json": "0978c56c4fb0409745f21dc6ffb31062",
"assets/AssetManifest.bin.json": "a71cb406db3593fcaba5b51b25ef1f1a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "75cc155995e9ac016c996a81a1491496",
"assets/fonts/MaterialIcons-Regular.otf": "0cd143041b7a74be452ea3886a63943d",
"assets/assets/images/yt.png": "d337e86234003f84a90624e9a34727c9",
"assets/assets/images/as.png": "bb7264c4e22d66bcdbccd4a41dfb1a36",
"assets/assets/images/apps.png": "52cae17dab23953c9b52226b4968b630",
"assets/assets/images/ab.png": "e3a9f0d6a51300b6874468313d2846c9",
"assets/assets/images/cppc.png": "3e6389d349d66ef9743ce3769d9bc62d",
"assets/assets/images/jc.png": "d6ddf0d191b8d34f5cbf7bb0ab49ea4c",
"assets/assets/images/gp.png": "8412cc2c8fb288c9c3cb9063e2e2aa11",
"assets/assets/images/sg.png": "8b5f07feccb0ffe305ad95339f6a7cd9",
"assets/assets/images/sp.png": "72d962c40e246835670bf040fa9ad9d7",
"assets/assets/images/itp.png": "435eb20a64bf48c86d2ecd272709b0c2",
"assets/assets/images/ig.png": "4920f506094be260940d10e12214f797",
"assets/assets/images/hc.png": "b96a000f807fc9ce4ae37205e7488eff",
"assets/assets/images/ir.png": "08a79cd5864528397df3a6977bf379e0",
"assets/assets/images/qc.png": "128a6c8e1b712f818c46ad30eb73662e",
"assets/assets/images/pg.png": "c77d6b5be28275f9e81d8a87b3087f71",
"assets/assets/images/pc.png": "f8ba8b1048127212866157f9c253ec39",
"assets/assets/images/fl.png": "e6c93ec74b781fd2925a59bb5890fdda",
"assets/assets/images/bw.png": "a98dc8fc495687487ebb2ec78d321a63",
"assets/assets/images/bs.png": "59aad62ee0f5d17e84b9f12a92e292a8",
"assets/assets/images/tk.png": "83170b9a79347d9781b1002538070ce7",
"assets/assets/images/cc.png": "486609301ef3704e40966c225791fbd3",
"assets/assets/loading.gif": "c3ea32ae03f54f1caeb417587c2c8ab8",
"assets/assets/logo.png": "6620490e3c6dc776f59a3ffe81a2799e",
"assets/assets/logo2.png": "181402829826fafa28c5c34e1705536e",
"assets/assets/fonts/anvaysoft.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/animations/products.json": "1acb60dea9ca89654461b6958f8b037a",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
