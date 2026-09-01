<template>
  <section id="regalos" class="relative z-[60] -mt-12 sm:-mt-16 py-20 sm:py-24 px-4 bg-[#FFF9F5] rounded-t-[2.5rem] sm:rounded-t-[3.5rem] shadow-[0_-20px_50px_rgba(139,81,44,0.14)] border-t border-terracotta-200/80">
    <div class="max-w-4xl mx-auto text-center w-full">

      <!-- Header -->
      <div class="mb-12">
        <div class="w-16 h-16 rounded-full bg-cream-200 border border-terracotta-200 flex items-center justify-center mx-auto mb-4 text-terracotta-700 shadow-sm">
          <Mail class="w-8 h-8" />
        </div>
        <span class="text-xs uppercase tracking-widest text-olive-600 font-semibold mb-1 block">Presentes &amp; Detalles</span>
        <h2 class="font-serif text-3xl sm:text-4xl md:text-5xl text-charcoal-900 font-normal">
          Lluvia de Sobres
        </h2>
        <div class="w-16 h-0.5 bg-terracotta-400 mx-auto my-3"></div>
      </div>

      <!-- Main Card -->
      <div class="max-w-2xl mx-auto bg-white/95 backdrop-blur rounded-3xl p-8 sm:p-12 border border-terracotta-200 shadow-paper text-center">
        
        <p class="font-serif italic text-lg sm:text-xl text-terracotta-800 mb-4 leading-relaxed">
          "El mejor regalo es tu presencia en este día tan especial para nosotros."
        </p>

        <p class="text-xs sm:text-sm text-charcoal-800 leading-relaxed mb-8 max-w-lg mx-auto font-light">
          Si deseas tener un detalle adicional con nosotros para el inicio de nuestra nueva etapa juntos, contaremos con la modalidad de lluvia de sobres el día del evento.
        </p>

        <!-- Lluvia de Sobres Highlight Box -->
        <div class="bg-cream-100/90 rounded-2xl p-6 sm:p-8 border border-terracotta-200/80 max-w-md mx-auto flex flex-col items-center">
          <div class="w-12 h-12 rounded-full bg-terracotta-100 text-terracotta-700 flex items-center justify-center mb-3 border border-terracotta-200 shadow-xs">
            <MailOpen class="w-6 h-6" />
          </div>
          
          <h3 class="font-serif text-lg text-charcoal-900 font-semibold mb-2">Buzón en el Evento</h3>
          
          <p class="text-xs text-charcoal-800 leading-relaxed font-light">
            En la recepción dispondremos de un buzón especial donde podrás depositar tu sobre con tus mejores deseos para nuestro matrimonio.
          </p>
        </div>

      </div>

    </div>
  </section>
</template>

<script setup>
import { Mail, MailOpen } from 'lucide-vue-next'
</script>

