<template>
  <section id="recomendaciones" class="relative z-[50] -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#FAF6F0] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(212,175,55,0.14)] border-t border-ochre-200/80">
    <div class="max-w-4xl mx-auto text-center w-full">

      <!-- Header -->
      <div class="mb-14">
        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-2 block">Información Importante</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          Recomendaciones
        </h2>
        <div class="w-16 h-0.5 bg-terracotta-400 mx-auto my-3"></div>
        <p class="font-serif italic text-base text-terracotta-700 max-w-md mx-auto">
          "Queremos que disfrutes al máximo de nuestro gran día con total comodidad."
        </p>
      </div>

      <!-- Recommendation Cards Grid -->
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6 sm:gap-8 max-w-3xl mx-auto text-left">
        
        <!-- Card 1: Parqueadero -->
        <div class="bg-white rounded-3xl p-6 sm:p-8 border border-terracotta-200/80 shadow-paper flex flex-col justify-between transform hover:-translate-y-1 transition-all duration-300 group">
          <div>
            <div class="w-14 h-14 rounded-2xl bg-terracotta-100/80 text-terracotta-700 flex items-center justify-center mb-5 border border-terracotta-200 group-hover:scale-105 transition-transform">
              <Car class="w-7 h-7" />
            </div>
            <span class="text-[11px] uppercase tracking-widest text-olive-600 font-semibold mb-1 block">Comodidad &amp; Seguridad</span>
            <h3 class="font-serif text-xl sm:text-2xl text-charcoal-900 font-normal mb-3">
              Servicio de Parqueadero
            </h3>
            <p class="text-sm text-charcoal-800 leading-relaxed font-light">
              Contamos con servicio de parqueadero disponible en las instalaciones del lugar para su total comodidad.
            </p>
          </div>
          
          <div class="mt-6 pt-4 border-t border-terracotta-100/70 inline-flex items-center gap-2 text-xs text-terracotta-700 font-medium">
            <CheckCircle2 class="w-4 h-4 text-terracotta-600" />
            <span>Disponible durante todo el evento</span>
          </div>
        </div>

        <!-- Card 2: Niños Bienvenidos -->
        <div class="bg-white rounded-3xl p-6 sm:p-8 border border-olive-200/80 shadow-paper flex flex-col justify-between transform hover:-translate-y-1 transition-all duration-300 group">
          <div>
            <div class="w-14 h-14 rounded-2xl bg-olive-100/80 text-olive-700 flex items-center justify-center mb-5 border border-olive-200 group-hover:scale-105 transition-transform">
              <Baby class="w-7 h-7" />
            </div>
            <span class="text-[11px] uppercase tracking-widest text-olive-600 font-semibold mb-1 block">En Familia</span>
            <h3 class="font-serif text-xl sm:text-2xl text-charcoal-900 font-normal mb-3">
              Niños y Niñas Bienvenidos
            </h3>
            <p class="text-sm text-charcoal-800 leading-relaxed font-light">
              Este es un evento en donde amamos los niños y las niñas, puedes traer a tu peque.
            </p>
          </div>

          <div class="mt-6 pt-4 border-t border-olive-100/70 inline-flex items-center gap-2 text-xs text-olive-700 font-medium">
            <Heart class="w-4 h-4 text-olive-600 fill-olive-600" />
            <span>Los más pequeños son bienvenidos</span>
          </div>
        </div>

      </div>

    </div>
  </section>
</template>

<script setup>
import { Car, Baby, CheckCircle2, Heart } from 'lucide-vue-next'
</script>

