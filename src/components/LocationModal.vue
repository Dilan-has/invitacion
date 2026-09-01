<template>
  <teleport to="body">
    <transition
      enter-active-class="transition duration-300 ease-out"
      enter-from-class="opacity-0 scale-95"
      enter-to-class="opacity-100 scale-100"
      leave-active-class="transition duration-200 ease-in"
      leave-from-class="opacity-100 scale-100"
      leave-to-class="opacity-0 scale-95"
    >
      <div 
        v-if="isOpen"
        class="fixed inset-0 z-50 bg-charcoal-900/70 backdrop-blur-sm flex items-center justify-center p-4"
        @click.self="$emit('close')"
      >
        <div class="bg-white rounded-3xl p-6 sm:p-8 max-w-lg w-full text-center border border-terracotta-200 shadow-2xl relative overflow-hidden">
          
          <!-- Close Button -->
          <button 
            @click="$emit('close')"
            class="absolute top-4 right-4 p-2 text-charcoal-800 hover:text-terracotta-700 rounded-full hover:bg-cream-100 transition-colors"
          >
            <X class="w-5 h-5" />
          </button>

          <!-- Icon Header -->
          <div class="w-14 h-14 rounded-full bg-terracotta-100 text-terracotta-700 flex items-center justify-center mx-auto mb-4 border border-terracotta-200">
            <MapPin class="w-7 h-7" />
          </div>

          <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-1 block">Lugar del Evento</span>
          <h3 class="font-serif text-2xl sm:text-3xl font-normal text-charcoal-900 mb-2">Hacienda El Jardín Secreto</h3>
          
          <p class="text-xs text-charcoal-800 mb-6">
            Subachoque, Cundinamarca
          </p>

          <!-- Map Frame / Embedded Location -->
          <div class="relative w-full h-48 bg-cream-100 rounded-2xl overflow-hidden border border-terracotta-200 mb-6 shadow-inner flex items-center justify-center">
            <iframe 
              src="https://maps.google.com/maps?q=4.8488415,-74.1735808&hl=es&z=16&output=embed" 
              width="100%" 
              height="100%" 
              style="border:0;" 
              allowfullscreen="" 
              loading="lazy" 
              referrerpolicy="no-referrer-when-downgrade"
            ></iframe>
          </div>

          <!-- Direct Apps Navigation Buttons -->
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-3">
            <a 
              href="https://www.google.com/maps/place/Hacienda+El+Jardin+Secreto/@4.8488415,-74.1761557,17z/data=!3m1!4b1!4m6!3m5!1s0x8e3f805fd8106caf:0xdf158dbe84ad7f5e!8m2!3d4.8488415!4d-74.1735808!16s%2Fg%2F11bxjh4mx6?entry=tts&g_ep=EgoyMDI2MDgzMC4wIPu8ASoASAFQAw%3D%3D&skid=a26c4e18-3f34-4608-b1e0-c486b1c8f249" 
              target="_blank" 
              rel="noopener noreferrer"
              class="bg-terracotta-700 hover:bg-terracotta-800 text-white py-3 px-4 rounded-xl text-xs uppercase tracking-wider font-semibold flex items-center justify-center gap-2 transition-all shadow-sm"
            >
              <ExternalLink class="w-4 h-4" />
              <span>Abrir Google Maps</span>
            </a>

            <a 
              href="https://waze.com/ul?ll=4.8488415,-74.1735808&navigate=yes" 
              target="_blank" 
              rel="noopener noreferrer"
              class="bg-olive-600 hover:bg-olive-700 text-white py-3 px-4 rounded-xl text-xs uppercase tracking-wider font-semibold flex items-center justify-center gap-2 transition-all shadow-sm"
            >
              <Navigation class="w-4 h-4" />
              <span>Abrir en Waze</span>
            </a>
          </div>


        </div>
      </div>
    </transition>
  </teleport>
</template>

<script setup>
import { MapPin, X, ExternalLink, Navigation } from 'lucide-vue-next'

defineProps({
  isOpen: Boolean
})

defineEmits(['close'])
</script>
