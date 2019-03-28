import setuptools

setuptools.setup(
    name="yugen_dnn",
    version="0.0.1",
    author="MG",
    author_email="maguan@microsoft.com",
    description="Python Service",
    long_description="",
    long_description_content_type="text/markdown",
    url="",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],

    install_requires=[
        "datefinder==0.7.0",
        "keras==2.2.4",
        "Flask>=1.0.2",
        "keras-contrib==2.0.8",
        "numpy>=1.15.4",
        "azure-storage-blob",
        "gevent"
    ],

    extras_require={
        "tf": ["tensorflow>=1.12.0,<2"],
        "tf_gpu": ["tensorflow-gpu>=1.12.0,<2"],
    }
)
