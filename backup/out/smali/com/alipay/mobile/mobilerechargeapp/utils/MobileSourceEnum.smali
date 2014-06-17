.class public final enum Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field public static final enum b:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field public static final enum c:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field public static final enum d:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field public static final enum e:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field public static final enum f:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

.field private static final synthetic h:[Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "default_source"

    const-string/jumbo v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "intelligent"

    const-string/jumbo v2, "intelligent"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->b:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "changephoneno"

    const-string/jumbo v2, "changephoneno"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "history"

    const-string/jumbo v2, "history"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->d:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "addressBook"

    const-string/jumbo v2, "addressBook"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->e:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const-string/jumbo v1, "input"

    const/4 v2, 0x5

    const-string/jumbo v3, "input"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->f:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->a:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->b:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->d:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->e:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->f:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->h:[Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;
    .locals 1

    const-class v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->h:[Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->g:Ljava/lang/String;

    return-object v0
.end method
