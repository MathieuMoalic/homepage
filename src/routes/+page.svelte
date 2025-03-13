<script lang="ts">
	import "../app.css";
</script>

<nav class="flex justify-between items-center p-6 bg-gray-800">
	<h1 class="text-xl font-semibold">Mathieu Moalic</h1>
	<ul class="flex space-x-6">
		<li><a href="/" class="hover:text-gray-400">Home</a></li>
		<li><a href="/" class="hover:text-gray-400">About</a></li>
		<li><a href="/" class="hover:text-gray-400">News</a></li>
	</ul>
</nav>
<section
	class="bg-gray-700 flex flex-col items-center text-center pt-16 px-6 h-[100vh]"
>
	<h2 class="text-4xl font-bold">
		Hi, I'm Mathieu <span class="inline-block">👋</span>
	</h2>
	<p class="mt-4 max-w-2xl text-lg">
		I'm a Physics PhD student currently living in Poland. My research is
		focused on the static and dynamic study of micromagnetic systems such as
		coupled skyrmions, spin wave generations, antidot lattices. To achieve
		it, I develop my own post processing and simulation software as well as
		using MuMax3. I mostly use Python, Rust and Go.
	</p>
	<div class="mt-8">
		<img
			src="./pp.jpg"
			alt="Mathieu Moalic"
			class="w-48 h-48 rounded-full border-4 border-gray-700"
		/>
	</div>
</section>
