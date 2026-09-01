<template>
  <section id="musica" class="relative z-[70] -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#F3F6F1] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(101,116,90,0.14)] border-t border-olive-200/80">
    <div class="max-w-4xl mx-auto text-center w-full">

      <!-- Header Badge -->
      <div class="inline-flex items-center gap-2 text-xs uppercase tracking-widest text-olive-700 font-semibold mb-3 px-4 py-1.5 rounded-full bg-olive-100/70 border border-olive-200">
        <Disc class="w-4 h-4 text-olive-600 animate-spin" style="animation-duration: 6s" />
        <span>Playlist Oficial</span>
      </div>

      <h2 class="font-serif text-3xl sm:text-4xl font-normal text-charcoal-900 mb-3">
        La Música de Nuestra Boda 🎶
      </h2>

      <p class="text-xs sm:text-sm text-charcoal-800 max-w-md mx-auto mb-8 font-light leading-relaxed">
        Acompáñanos a escuchar y añadir tus temas favoritos a nuestra lista oficial para celebrar juntos en la fiesta.
      </p>

      <!-- Spotify Redirect Button -->
      <div class="flex justify-center">
        <a 
          href="https://open.spotify.com/playlist/6N9NLNGsxmG1MRnbjBa7EM?si=GyVerxXfTvu1UzEbYFYr5Q&utm_source=copy-link&pt=271ef491cc5ee4305cf49699d2462b1e&pi=Oc3ya1SsQ3a_c"
          target="_blank"
          rel="noopener noreferrer"
          class="inline-flex items-center gap-3 bg-[#1DB954] hover:bg-[#1ed760] text-black font-semibold px-8 py-4 rounded-2xl transition-all duration-300 shadow-md hover:shadow-xl transform hover:-translate-y-1 text-sm uppercase tracking-wider group"
        >
          <!-- Spotify SVG Icon -->
          <svg class="w-6 h-6 fill-current text-black group-hover:scale-110 transition-transform" viewBox="0 0 24 24">
            <path d="M12 0C5.376 0 0 5.376 0 12s5.376 12 12 12 12-5.376 12-12S18.624 0 12 0zm5.521 17.34c-.24.359-.66.48-1.021.24-2.82-1.74-6.36-2.101-10.561-1.141-.418.122-.779-.179-.899-.539-.12-.421.18-.78.54-.9 4.56-1.021 8.52-.6 11.64 1.32.42.18.48.66.301 1.02zm1.48-3.3c-.301.42-.841.6-1.262.3-3.239-1.98-8.159-2.58-11.939-1.38-.479.12-1.02-.12-1.14-.6-.12-.48.12-1.021.6-1.141 4.38-1.32 9.78-.66 13.44 1.56.421.24.54.84.301 1.26zm.12-3.36C15.24 8.4 8.82 8.16 5.16 9.301c-.6.18-1.2-.18-1.38-.72-.18-.6.18-1.2.72-1.38 4.26-1.26 11.28-1.02 15.72 1.62.54.3.72 1.02.42 1.56-.3.42-1.02.6-1.56.3z"/>
          </svg>
          <span>Abrir Playlist en Spotify</span>
          <ExternalLink class="w-4 h-4 text-black/70 group-hover:translate-x-0.5 transition-transform" />
        </a>
      </div>

    </div>
  </section>
</template>

<script setup>
import { Disc, ExternalLink } from 'lucide-vue-next'
</script>

