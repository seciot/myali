.class final enum Lcom/alipay/android/app/data/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alipay/android/app/data/c;

.field public static final enum b:Lcom/alipay/android/app/data/c;

.field public static final enum c:Lcom/alipay/android/app/data/c;

.field public static final enum d:Lcom/alipay/android/app/data/c;

.field public static final enum e:Lcom/alipay/android/app/data/c;

.field public static final enum f:Lcom/alipay/android/app/data/c;

.field public static final enum g:Lcom/alipay/android/app/data/c;

.field private static final synthetic h:[Lcom/alipay/android/app/data/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "Next"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "PrevWindow"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->b:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "Exit"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "ClearInvalid"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->d:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "PrevStep"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->e:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "Wait"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->f:Lcom/alipay/android/app/data/c;

    new-instance v0, Lcom/alipay/android/app/data/c;

    const-string/jumbo v1, "Reset"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/data/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/app/data/c;

    sget-object v1, Lcom/alipay/android/app/data/c;->a:Lcom/alipay/android/app/data/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/data/c;->b:Lcom/alipay/android/app/data/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/data/c;->c:Lcom/alipay/android/app/data/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/data/c;->d:Lcom/alipay/android/app/data/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/data/c;->e:Lcom/alipay/android/app/data/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/data/c;->f:Lcom/alipay/android/app/data/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/data/c;->g:Lcom/alipay/android/app/data/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/data/c;->h:[Lcom/alipay/android/app/data/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/data/c;
    .locals 1

    const-class v0, Lcom/alipay/android/app/data/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/c;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/data/c;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/c;->h:[Lcom/alipay/android/app/data/c;

    invoke-virtual {v0}, [Lcom/alipay/android/app/data/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/data/c;

    return-object v0
.end method
