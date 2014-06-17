.class public Lcom/alipay/asset/common/InputValidator;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_INVALID_FORMAT:I = -0x2

.field public static final ERROR_NULL_INPUT:I = -0x4

.field public static final ERROR_OUTOF_RANGE:I = -0x3

.field public static final NO_ERROR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAmount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->amount_empty_err:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v4, "^[1-9]\\d*(([\\.]?[0-9]{1,2})?)$|^[0][\\.][1-9]$|^[0][\\.]([0-9][0-9])$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->amount_format_err:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iput-boolean v2, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method

.method public static checkPaymentPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;
    .locals 3

    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->pay_password_empty_tip:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method

.method public static checkSmsCode(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/asset/common/ValidateResult;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->check_code_empty_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, p2, :cond_1

    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->check_code_length_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "^[0-9]*$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->pay_passwd_format_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method
