<script lang="ts">
    import { ExternalLink } from "lucide-svelte";

    const conferences = [
        {
            title: "Excitation of short wavelength spin waves in ferromagnetic conduit with microwave pumped perpendicularly magnetized nanodot",
            name: "736. WE-Heraeus-Seminar",
            location: "Online",
            year: 2021,
            abstract: "./abstracts/1.pdf",
            presentation: "./presentations/1.pdf",
        },
        {
            title: "Excitation of Short Wavelength Spin Waves in a Ferromagnetic Conduit With a Microwave Pumped Perpendicularly Magnetized Nanodot",
            name: "INTERMAG",
            location: "Online",
            year: 2021,
            abstract: "./abstracts/2.pdf",
            presentation: "./presentations/2.pdf",
        },
        {
            title: "Mutual magnetostatic coupling between the saturated ferromagnetic stripe and a nanodot",
            name: "Physics of Magnetism",
            location: "Online",
            year: 2021,
            abstract: "./abstracts/3.pdf",
            presentation: "./presentations/3.pdf",
        },
        {
            title: "Magnetostatic coupling between a ferromagnetic stripe and a skyrmion inscribed in a nanodot",
            name: "MagIC+",
            location: "Online",
            year: 2021,
            abstract: "./abstracts/4.pdf",
            presentation: "./presentations/4.pdf",
        },
        {
            title: "Magnetostatic coupling between the a ferromagnetic stripe and a nanodot",
            name: "INTERMAG",
            location: "New Orleans, USA",
            year: 2022,
            abstract: "./abstracts/5.pdf",
            presentation: "./presentations/5.pdf",
        },
        {
            title: "Dynamic interactions between edge and bulk modes in an antidot lattice with perpendicular magnetic anisotropy",
            name: "SolSkyMag",
            location: "San Sebastian, Spain",
            year: 2022,
            abstract: "./abstracts/6.pdf",
            presentation: "./presentations/6.pdf",
        },
        {
            title: "Dynamic interactions between edge and bulk modes in an antidot lattice with perpendicular magnetic anisotropy",
            name: "Joint European Magnetic Symposia",
            location: "Warsaw, Poland",
            year: 2022,
            abstract: "./abstracts/7.pdf",
            presentation: "#",
        },
        {
            title: "Dynamic interactions between edge and bulk modes in an antidot lattice with perpendicular magnetic anisotropy",
            name: "Institute of Spintronics and Quantum Information Symposium",
            location: "Poznań, Poland",
            year: 2022,
            abstract: "#",
            presentation: "#",
        },
        {
            title: "Antidot lattice with perpendicular magnetic anisotropy: dynamics between edge modes and bulk modes",
            name: "SolSkyMag",
            location: "San Sebastian, Spain",
            year: 2023,
            abstract: "./abstracts/9.pdf",
            presentation: "./presentations/9.pdf",
        },
        {
            title: "Hybridizations between edge and bulk modes in an antidot lattice with perpendicular anisotropy",
            name: "Physics of Magnetism",
            location: "Poznań, Poland",
            year: 2023,
            abstract: "./abstracts/10.pdf",
            presentation: "./presentations/10.pdf",
        },
        {
            title: "Antidot lattice with perpendicular magnetic anisotropy: dynamics between edge modes and bulk modes",
            name: "Trends in Magnetism",
            location: "Rome, Italy",
            year: 2023,
            abstract: "./abstracts/11.pdf",
            presentation: "./presentations/11.pdf",
        },
        {
            title: "Spin wave hybridization in a magnonic crystal formed by antidot lattice with perpendicular magnetic anisotropy",
            name: "Joint European Magnetic Symposia",
            location: "Madrid, Spain",
            year: 2023,
            abstract: "./abstracts/12.pdf",
            presentation: "./presentations/11.pdf",
        },
        {
            title: "Antidot Lattice with Perpendicular Magnetic Anisotropy: Dynamics between Edge Modes and Bulk Modes",
            name: "MagIC+",
            location: "Będlewo, Poland",
            year: 2023,
            abstract: "./abstracts/13.pdf",
            presentation: "./presentations/11.pdf",
        },
        {
            title: "Behavior of edge and bulk modes in an antidot lattice exhibiting perpendicular magnetic anisotropy",
            name: "Institute of Spintronics and Quantum Information Symposium",
            location: "Będlewo, Poland",
            year: 2024,
            abstract: "./abstracts/14.pdf",
            presentation: "./presentations/11.pdf",
        },
        {
            title: "Magnon-magnon coupling in an antidot lattice with perpendicular magnetic anisotropy",
            name: "INTERMAG",
            location: "Rio de Janeiro, Brazil",
            year: 2024,
            abstract: "./abstracts/15.pdf",
            presentation: "./presentations/16.pdf",
        },
        {
            title: "Magnon Interactions in Antidot Lattices with Perpendicular Magnetic Anisotropy",
            name: "International Conference on Magnetism",
            location: "Bologna, Italy",
            year: 2024,
            abstract: "./abstracts/16.pdf",
            presentation: "./presentations/16.pdf",
        },
        {
            title: "Dynamics of edge and bulk modes in an antidot lattice with perpendicular magnetic anisotropy",
            name: "1st Transnational Round Table",
            location: "Exeter, UK",
            year: 2024,
            abstract: "./abstracts/17.pdf",
            presentation: "./presentations/17.pdf",
        },
    ];
</script>

<section class="bg-gray-700 text-white py-16 px-6">
    <div class="max-w-4xl mx-auto">
        <h2 class="text-4xl font-bold text-center mb-8">
            Conference Talks & Posters
        </h2>

        <div class="overflow-hidden rounded-lg shadow-lg">
            {#each conferences.reverse() as conf}
                <div
                    class="border-b border-gray-700 bg-gray-800 hover:bg-gray-600 transition duration-200 p-6 relative flex flex-col"
                >
                    <div class="text-lg font-semibold text-gray-100 mb-1">
                        {conf.name}
                        <span class="text-sm text-gray-400">({conf.year})</span>
                    </div>

                    <div
                        class="flex justify-between text-sm text-gray-300 italic"
                    >
                        <span class="mr-4">{conf.title}</span>
                        <span class="text-gray-400 whitespace-nowrap"
                            >{conf.location}</span
                        >
                    </div>

                    <div class="flex gap-4 mt-3">
                        {#if conf.abstract !== "#"}
                            <a
                                href={conf.abstract}
                                target="_blank"
                                class="flex items-center gap-1 text-sm text-blue-300 hover:underline"
                            >
                                Abstract <ExternalLink class="w-4 h-4" />
                            </a>
                        {/if}
                        {#if conf.presentation !== "#"}
                            <a
                                href={conf.presentation}
                                target="_blank"
                                class="flex items-center gap-1 text-sm text-blue-300 hover:underline"
                            >
                                Presentation <ExternalLink class="w-4 h-4" />
                            </a>
                        {/if}
                    </div>
                </div>
            {/each}
        </div>
    </div>
</section>
