.class Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x51a6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->a:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "unicode_to_hanyu_pinyin.txt"

    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/ResourceHelper;->getResourceInputStream(Ljava/lang/String;)Ljava/io/BufferedInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    if-nez v4, :cond_0

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :goto_1
    return-void

    :cond_0
    :try_start_4
    new-instance v3, Ljava/io/InputStreamReader;

    const-string/jumbo v0, "ISO-8859-1"

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    const/4 v0, 0x0

    :goto_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->a:[Ljava/lang/String;

    aput-object v1, v5, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :goto_5
    throw v0

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    :catch_a
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0
.end method

.method static getInstance()Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource$ChineseToPinyinResourceHolder;->theInstance:Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;

    return-object v0
.end method


# virtual methods
.method getHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x4e00

    if-lt p1, v1, :cond_3

    const v1, 0x9fbb

    if-gt p1, v1, :cond_3

    const-string/jumbo v1, "4E00"

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "(none0)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
