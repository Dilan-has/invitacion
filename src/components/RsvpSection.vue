<template>
  <section id="rsvp" class="relative z-[80] -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#FAF4EE] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(139,81,44,0.16)] border-t border-terracotta-200/80">
    <div class="max-w-4xl mx-auto text-center w-full">

      <!-- Header -->
      <div class="mb-12">
        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-2 block">Confirma tu Asistencia</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          ¿Nos Acompañas?
        </h2>
        <div class="w-16 h-0.5 bg-terracotta-400 mx-auto my-3"></div>
        <p class="text-xs sm:text-sm text-charcoal-800 max-w-md mx-auto">
          Por favor confirma tu asistencia a través de nuestro portal oficial.
        </p>
      </div>

      <!-- Card Container -->
      <div class="max-w-xl mx-auto bg-white/95 backdrop-blur rounded-3xl p-8 sm:p-12 border border-terracotta-200/90 shadow-paper-lg text-center">
        
        <div class="w-16 h-16 rounded-full bg-terracotta-100 text-terracotta-700 flex items-center justify-center mx-auto mb-6 border border-terracotta-200 shadow-sm">
          <Heart class="w-8 h-8 fill-terracotta-600" />
        </div>

        <p class="font-serif italic text-lg sm:text-xl text-terracotta-800 mb-4 leading-relaxed">
          "Tu presencia es el regalo más valioso para nosotros."
        </p>

        <p class="text-xs sm:text-sm text-charcoal-800 leading-relaxed mb-8 max-w-md mx-auto font-light">
          Para realizar la confirmación de tu asistencia y la de tus acompañantes, por favor ingresa a nuestro enlace de registro:
        </p>

        <!-- Redirect Button -->
        <a 
          href="https://www.magnoeventos.net/events/dilan-y-maira"
          target="_blank"
          rel="noopener noreferrer"
          class="inline-flex items-center justify-center gap-3 w-full bg-terracotta-700 hover:bg-terracotta-800 text-white font-medium py-4 px-6 rounded-2xl transition-all duration-300 uppercase tracking-widest text-xs shadow-md hover:shadow-xl transform hover:-translate-y-0.5 group"
        >
          <span>Confirmar Asistencia Aquí</span>
          <ExternalLink class="w-4 h-4 group-hover:translate-x-0.5 transition-transform" />
        </a>

      </div>

    </div>
  </section>
</template>

<script setup>
import { Heart, ExternalLink } from 'lucide-vue-next'
</script>

