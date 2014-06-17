.class public final Lcom/alipay/mobile/onsitepay/utils/a;
.super Ljava/lang/Object;
.source "ShareHelp.java"


# direct methods
.method public static a(Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;)I
    .locals 9
    .parameter

    .prologue
    const v8, 0x1111111

    const/4 v1, 0x0

    .line 19
    .line 20
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/bean/SecurityQrCodeShowResult;->getAccountQrCodeInfoResult()Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/financial/account/result/SecurityAccountQrCodeInfoResult;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "shareSwitch"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 24
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 25
    array-length v6, v5

    move v3, v1

    move v4, v0

    move v2, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-byte v0, v5, v3

    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    const/16 v7, 0x31

    if-ne v0, v7, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 33
    :goto_1
    mul-int/lit8 v7, v4, 0x4

    .line 34
    shl-int/2addr v0, v7

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    and-int/2addr v0, v8

    or-int/2addr v2, v0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " j is 0x shareType"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 31
    goto :goto_1

    :cond_1
    move v1, v2

    .line 41
    :cond_2
    and-int v0, v1, v8

    .line 42
    return v0
.end method
