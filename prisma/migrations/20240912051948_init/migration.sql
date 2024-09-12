/*
  Warnings:

  - You are about to drop the column `tanggal` on the `transaksi` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `transaksi` DROP COLUMN `tanggal`,
    ADD COLUMN `id_penjual` INTEGER NOT NULL DEFAULT 0,
    ADD COLUMN `tanggal_transaksi` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3);

-- AddForeignKey
ALTER TABLE `Transaksi` ADD CONSTRAINT `Transaksi_id_penjual_fkey` FOREIGN KEY (`id_penjual`) REFERENCES `Penjual`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
