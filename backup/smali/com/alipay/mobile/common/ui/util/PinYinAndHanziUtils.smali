.class public Lcom/alipay/mobile/common/ui/util/PinYinAndHanziUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 13

    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    :goto_0
    array-length v6, p0

    if-lt v6, v2, :cond_3

    aget-object v0, p0, v3

    array-length v7, v0

    aget-object v0, p0, v12

    array-length v8, v0

    mul-int v0, v7, v8

    new-array v9, v0, [Ljava/lang/String;

    move v5, v3

    move v0, v3

    :goto_1
    if-ge v5, v7, :cond_1

    move v1, v0

    move v0, v3

    :goto_2
    if-ge v0, v8, :cond_0

    add-int/lit8 v4, v1, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p0, v3

    aget-object v11, v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "##"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p0, v12

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, -0x1

    new-array v0, v0, [[Ljava/lang/String;

    move v1, v2

    :goto_3
    if-ge v1, v6, :cond_2

    add-int/lit8 v4, v1, -0x1

    aget-object v5, p0, v1

    aput-object v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    aput-object v9, v0, v3

    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static convertChinese2Pinyin(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/ui/util/PinYinAndHanziUtils;->splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/alipay/mobile/common/ui/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getFullPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-object v4, v2, v0

    aput-object v4, v3, v0

    goto :goto_2

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, v2

    if-lez v0, :cond_4

    const-string/jumbo v0, ".*[\\u4e00-\\u9fa5]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static isAlphabet(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "[a-zA-Z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isContainHanzi(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, ".*[\\u4e00-\\u9fa5]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanzi(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "[\\u4e00-\\u9fa5]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanziAndAlphabet(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "[\\u4e00-\\u9fa5[a-zA-Z ]]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHanziSting(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/ui/util/PinYinAndHanziUtils;->isHanzi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isStartWithAlphabet(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "[a-zA-Z]+.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static processResult([[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/alipay/mobile/common/ui/util/PinYinAndHanziUtils;->a([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const-string/jumbo v5, "##"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static splitDisplayNameWithHanzi(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "([\\u4e00-\\u9fa5 ])"

    const-string/jumbo v1, "###$1###"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
