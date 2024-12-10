using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using CatanDataAccess.Helper;

namespace CatanDataAccess.Helpers
{
    public static class PasswordUtilities
    {
        public const int SALT_SIZE = 16;
        public static byte[] GetSaltPassword()
        {
            byte[] salt = new byte[SALT_SIZE];

            using (RNGCryptoServiceProvider randomNumber = new RNGCryptoServiceProvider()) 
            {
                randomNumber.GetBytes(salt);
            }

            return salt;
        }
        public static byte[] GetHashPassword(string password, byte[]salt)
        {
            using(SHA256 sha256 = SHA256.Create())
            {
                Byte[] passwordByteValue = Encoding.UTF8.GetBytes(password);
                Byte[] generatePasswordNumber = new byte[SALT_SIZE + passwordByteValue.Length];

                Buffer.BlockCopy(salt, 0, generatePasswordNumber, 0, salt.Length);
                Buffer.BlockCopy(passwordByteValue, 0, generatePasswordNumber, salt.Length, passwordByteValue.Length);

                return sha256.ComputeHash(generatePasswordNumber);
            }
        }
        public static bool ComparePassword(string password, byte[] storedSalt, byte[] storedHash)
        {
            byte[] introducedHash = GetHashPassword(password, storedSalt);

            return CompareBytes(introducedHash, storedHash);
        }
        public static bool CompareBytes(byte[] introducedHash, byte[] storedHash)
        {
            int minLength = Math.Min(introducedHash.Length, storedHash.Length);
            int isEqual = introducedHash.Length ^ storedHash.Length;
            for (int i = 0; i < minLength; i++)
            {
                isEqual |= introducedHash[i] ^ storedHash[i]; 
            }
            return isEqual == 0;
        }
    }
}
