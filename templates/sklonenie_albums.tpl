{if $albums_total%100 == 1 or $albums_total%100 == 21 or $albums_total%100 == 31 or $albums_total%100 == 41 or $albums_total%100 == 51 or $albums_total%100 == 61 or $albums_total%100 == 71 or $albums_total%100 == 81 or $albums_total%100 == 91} альбом{/if}
{if ($albums_total%100 >= 2 and $albums_total%100 <= 4) or ($albums_total%100 >= 22 and $albums_total%100 <= 24) or ($albums_total%100 >= 32 and $albums_total%100 <= 34) or ($albums_total%100 >= 42 and $albums_total%100 <= 44) or ($albums_total%100 >= 52 and $albums_total%100 <= 54) or ($albums_total%100 >= 62 and $albums_total%100 <= 64) or ($albums_total%100 >= 72 and $albums_total%100 <= 74) or ($albums_total%100 >= 82 and $albums_total%100 <= 84) or ($albums_total%100 >= 92 and $albums_total%100 <= 94)} альбома{/if}
{if ($albums_total == 0) or ($albums_total%100 >= 5 and $albums_total%100 <= 20) or ($albums_total%100 >= 25 and $albums_total%100 <= 30) or ($albums_total%100 >= 35 and $albums_total%100 <= 40) or($albums_total%100 >= 45 and $albums_total%100 <= 50) or ($albums_total%100 >= 55 and $albums_total%100 <= 60) or ($albums_total%100 >= 65 and $albums_total%100 <= 70) or ($albums_total%100 >= 75 and $albums_total%100 <= 80) or ($albums_total%100 >= 85 and $albums_total%100 <= 90) or ($albums_total%100 >= 95 and $albums_total%100 < 100)} альбомов{/if}