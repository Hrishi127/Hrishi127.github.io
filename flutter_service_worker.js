'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "f07f187a166438f9e3883a12bda96b55",
"version.json": "4dfc7510fa124b6299c9edc4f65f6884",
"index.html": "fb9fc473d1f020b935a0fb1ae1acd2a5",
"/": "fb9fc473d1f020b935a0fb1ae1acd2a5",
"main.dart.js": "2952162b5d7140089282eb3d863e5e89",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-192.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-maskable-512.png": "181402829826fafa28c5c34e1705536e",
"icons/Icon-512.png": "181402829826fafa28c5c34e1705536e",
"manifest.json": "c7a72c719defaf06042dd39264349484",
"assets/AssetManifest.json": "ce054534da7ba7a6b5d629874c141ef0",
"assets/loading.gif": "38c885ac47ecc3503c4f99e870484cdf",
"assets/NOTICES": "9f3c95b0b33f8c49bc9ab94eea4ca432",
"assets/FontManifest.json": "0978c56c4fb0409745f21dc6ffb31062",
"assets/AssetManifest.bin.json": "2593ba8efeac512e6c13d2bf99f2fb23",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "c41ce54f976ea001d7e931096553cd72",
"assets/fonts/MaterialIcons-Regular.otf": "8f3a2b49cabd27ae7786bb18bfa3aa61",
"assets/assets/images/yt.png": "d337e86234003f84a90624e9a34727c9",
"assets/assets/images/as.png": "bb7264c4e22d66bcdbccd4a41dfb1a36",
"assets/assets/images/ad.png": "a94402f286cde0542b60052d8a82cb92",
"assets/assets/images/apps.png": "52cae17dab23953c9b52226b4968b630",
"assets/assets/images/at.png": "32e671b3b209b83a755192ab2e5a05cc",
"assets/assets/images/ab.png": "35f888c1814a5c103dada2f828789d48",
"assets/assets/images/cppc.png": "7f2b3c4cdce49df9ff453fca8f50f852",
"assets/assets/images/jc.png": "06700e138383a9657e234f45d8b8544a",
"assets/assets/images/gp.png": "8412cc2c8fb288c9c3cb9063e2e2aa11",
"assets/assets/images/sg.png": "8b5f07feccb0ffe305ad95339f6a7cd9",
"assets/assets/images/sp.png": "d6780602ccb20ad5601a9a45873da900",
"assets/assets/images/itp.png": "55c41c3a6b6a195d86c2a8e45ebdeaff",
"assets/assets/images/ig.png": "4920f506094be260940d10e12214f797",
"assets/assets/images/hc.png": "963b5b876502515534744f92cf8ae917",
"assets/assets/images/ir.png": "e5408d8e957e83716329a33238c223a8",
"assets/assets/images/qc.png": "a993bfa299b4d117de881521c82c63fd",
"assets/assets/images/pg.png": "999c8cca709b662398cf3c69f460b9eb",
"assets/assets/images/pc.png": "63b9785ffecff26c21dfa847472f0b99",
"assets/assets/images/fl.png": "b464225801f494fae9d91e9d2d564328",
"assets/assets/images/ic.png": "d2d49e100238b1702645e93a4d4a4f0e",
"assets/assets/images/bc.png": "4e9c8311d45483447dee77697fd47ce1",
"assets/assets/images/bw.png": "af6869c6db3d8aa33da42c36c010d837",
"assets/assets/images/bs.png": "59aad62ee0f5d17e84b9f12a92e292a8",
"assets/assets/images/tk.png": "cb13a16d0ac146b2016351135f32f679",
"assets/assets/images/csc.png": "b5b5c62640bff34276e8daec564984fb",
"assets/assets/images/cc.png": "87106277696a01e2160f78e7b6fc6835",
"assets/assets/loading.gif": "38c885ac47ecc3503c4f99e870484cdf",
"assets/assets/logo.png": "6620490e3c6dc776f59a3ffe81a2799e",
"assets/assets/logo2.png": "181402829826fafa28c5c34e1705536e",
"assets/assets/fonts/anvaysoft.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/animations/products.json": "1acb60dea9ca89654461b6958f8b037a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
