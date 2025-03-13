<script lang="ts">
	import "../app.css";
	import {
		Github,
		Linkedin,
		GraduationCap,
		Microscope,
		BookMarked,
		Mail,
	} from "lucide-svelte";
</script>

<header>
	<nav class="flex justify-between items-center p-6 bg-gray-800 text-white">
		<h1 class="text-xl font-semibold">Mathieu Moalic</h1>
		<ul class="flex space-x-6">
			<li><a href="/" class="hover:text-gray-400">Home</a></li>
			<li><a href="/" class="hover:text-gray-400">About</a></li>
		</ul>
	</nav>
</header>
<main class="text-white flex-1 bg-gray-700">
	<section
		class="bg-gray-700 flex flex-col md:flex-row-reverse items-center justify-center text-justify pt-16 px-6"
	>
		<div class="mb-6 md:mb-0 flex-shrink-0">
			<img
				alt="Mathieu Moalic"
				src="./pp.jpg"
				class="w-72 h-72 rounded-full border-4 border-gray-500 object-cover"
			/>
		</div>
		<div class="max-w-2xl md:mr-10">
			<h2 class="text-4xl font-bold">
				Hi, I'm Mathieu <span class="inline-block">👋</span>
			</h2>
			<p class="mt-4 text-lg">
				I'm a Physics PhD student currently living in Poland. My
				research is focused on the static and dynamic study of
				micromagnetic systems such as coupled skyrmions, spin wave
				generations, antidot lattices. To achieve it, I develop my own
				post processing and simulation software as well as using MuMax3.
				I mostly use Python, Rust, and Go.
			</p>
		</div>
	</section>
</main>
<footer class="bg-gray-800 text-gray-300 py-6">
	<div
		class="container mx-auto flex flex-col justify-between items-center px-6"
	>
		<div class="text-center mb-4">
			<p class="text-md mt-2 flex space-x-1">
				<Mail size={24} />
				<a href="mailto:contact@matmoa.xyz" class="hover:text-white"
					>contact@matmoa.xyz</a
				>
			</p>
		</div>
		<div class="flex space-x-6">
			<a
				href="https://github.com/mathieumoalic"
				target="_blank"
				aria-label="GitHub"
				class="hover:text-white"
			>
				<Github size={24} />
			</a>
			<a
				href="https://www.linkedin.com/in/mathieu-moalic/"
				target="_blank"
				aria-label="LinkedIn"
				class="hover:text-white"
			>
				<Linkedin size={24} />
			</a>
			<a
				href="https://scholar.google.com/citations?user=mc7jgBAAAAAJ&hl=en"
				target="_blank"
				aria-label="Google Scholar"
				class="hover:text-white"
			>
				<GraduationCap size={24} />
			</a>
			<a
				href="https://www.researchgate.net/profile/Mathieu-Moalic"
				target="_blank"
				aria-label="ResearchGate"
				class="hover:text-white"
			>
				<BookMarked size={24} />
			</a>
			<a
				href="https://orcid.org/0000-0002-4562-1543"
				target="_blank"
				aria-label="ORCID"
				class="hover:text-white"
			>
				<Microscope size={24} />
			</a>
		</div>
	</div>
</footer>
