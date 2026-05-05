import pdfplumber

with pdfplumber.open(r'c:\Users\user\Downloads\Soal UTS.pdf') as pdf:
    for page in pdf.pages:
        print(page.extract_text())