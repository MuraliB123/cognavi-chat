import streamlit as st 
from pandasai.llm.openai import OpenAI
from dotenv import load_dotenv
import os
import pandas as pd
from pandasai import PandasAI

load_dotenv()
// Import CryptoJS
const CryptoJS = require("crypto-js");

// 🔹 Encrypt Function
function encryptPassword(password, key) {
    return CryptoJS.AES.encrypt(password, key).toString();
}

// 🔹 Decrypt Function
function decryptPassword(encryptedPassword, key) {
    const bytes = CryptoJS.AES.decrypt(encryptedPassword, key);
    return bytes.toString(CryptoJS.enc.Utf8);
}

// 🔹 Example Usage
const key = "mySecretKey123";  // 🔑 Key should be the same for encryption & decryption
const password = "mySecurePassword";

const encrypted = encryptPassword(password, key);
console.log("Encrypted:", encrypted);

const decrypted = decryptPassword(encrypted, key);
console.log("Decrypted:", decrypted);



openai_api_key ="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"


def chat_with_csv(df,prompt):
    llm = OpenAI(api_token=openai_api_key)
    pandas_ai = PandasAI(llm)
    result = pandas_ai.run(df, prompt=prompt)
    print(result)
    return result

st.set_page_config(layout='wide')

st.title("Get Insights from your data")

input_csv = st.file_uploader("Upload your CSV file", type=['csv'])

if input_csv is not None:

        col1, col2 = st.columns([1,1])

        with col1:
            st.info("CSV Uploaded Successfully")
            data = pd.read_csv(input_csv)
            st.dataframe(data, use_container_width=True)

        with col2:

            st.info("Chat Below")
            
            input_text = st.text_area("Enter your query")

            if input_text is not None:
                if st.button("Chat with CSV"):
                    st.info("Your Query: "+input_text)
                    result = chat_with_csv(data, input_text)
                    st.success(result)
