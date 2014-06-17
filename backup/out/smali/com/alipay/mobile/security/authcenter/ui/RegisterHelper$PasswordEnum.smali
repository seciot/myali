.class public final enum Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PasswordEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_ALL_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_BIG_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_DIGITS:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_DOUBLE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_SMALL_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_ERROR_SPACE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

.field public static final enum PASSWORD_OK:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;


# instance fields
.field private code:I

.field private memo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_OK"

    const/16 v2, 0x7d0

    const-string/jumbo v3, "\u5bc6\u7801OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_OK:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_SPACE"

    const/16 v2, 0x7d1

    const-string/jumbo v3, "\u5bc6\u7801\u4e3a\u5168\u7a7a\u683c"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_SPACE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_SMALL_LENGTH"

    const/16 v2, 0x7d2

    const-string/jumbo v3, "\u5bc6\u7801\u592a\u77ed"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_SMALL_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_DIGITS"

    const/16 v2, 0x7d3

    const-string/jumbo v3, "\u5bc6\u7801\u4e3a\u5168\u6570\u5b57"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_DIGITS:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_LETTER"

    const/16 v2, 0x7d4

    const-string/jumbo v3, "\u5bc6\u7801\u4e3a\u8fde\u7eed\u7684\u5b57\u6bcd\u6807\u70b9"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_DOUBLE"

    const/4 v2, 0x5

    const/16 v3, 0x7d5

    const-string/jumbo v4, "\u5bc6\u7801\u4e3a\u4e2d\u6587\u7b49\u53cc\u5b57\u8282\u5b57\u7b26"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_DOUBLE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_ALL_LETTER"

    const/4 v2, 0x6

    const/16 v3, 0x7d7

    const-string/jumbo v4, "\u5bc6\u7801\u4e3a\u5b57\u7b26\uff0c\u6570\u5b57\uff0c\u548c\u5b57\u6bcd"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_ALL_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const-string/jumbo v1, "PASSWORD_ERROR_BIG_LENGTH"

    const/4 v2, 0x7

    const/16 v3, 0x7d6

    const-string/jumbo v4, "\u5bc6\u7801\u592a\u957f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_BIG_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_OK:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_SPACE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_SMALL_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_DIGITS:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_DOUBLE:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_ALL_LETTER:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->PASSWORD_ERROR_BIG_LENGTH:Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->$VALUES:[Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->code:I

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->memo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->$VALUES:[Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->code:I

    return v0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->code:I

    return-void
.end method

.method public final setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/RegisterHelper$PasswordEnum;->memo:Ljava/lang/String;

    return-void
.end method
