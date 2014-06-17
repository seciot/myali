.class public Lcom/taobao/securityjni/bcast/AppStateManager;
.super Ljava/lang/Object;


# static fields
.field public static final DNS_ACTION:Ljava/lang/String; = "setaobao.bbox.DNS"

.field public static final EXTRA_DNS_IP:Ljava/lang/String; = "IPAddress"

.field public static final EXTRA_DNS_LOCAL:Ljava/lang/String; = "DNSinfolocal"

.field public static final EXTRA_DNS_NET:Ljava/lang/String; = "DNSinfonet"

.field public static final EXTRA_RT:Ljava/lang/String; = "RTinfo"

.field public static final EXTRA_SPITEP:Ljava/lang/String; = "SPITEPinfo"

.field public static Init:I = 0x0

.field public static final RT_ACTION:Ljava/lang/String; = "setaobao.bbox.RT"

.field public static final RT_VALUE_100_PERMISSION:I = 0xa

.field public static final RT_VALUE_INVALID:I = -0x1

.field public static final RT_VALUE_LIKELY_1:I = 0x1

.field public static final RT_VALUE_LIKELY_2:I = 0x2

.field public static final RT_VALUE_LIKELY_3:I = 0x3

.field public static final RT_VALUE_LIKELY_4:I = 0x4

.field public static final RT_VALUE_LIKELY_5:I = 0x5

.field public static final RT_VALUE_LIKELY_6:I = 0x6

.field public static final RT_VALUE_LIKELY_7:I = 0x7

.field public static final RT_VALUE_LIKELY_8:I = 0x8

.field public static final RT_VALUE_LIKELY_9:I = 0x9

.field public static final RT_VALUE_UNDETECTABLE:I = 0x0

.field public static final SPITEP_ACTION:Ljava/lang/String; = "setaobao.bbox.SPITEP"

.field public static final SPITEP_VALUE_NS_0:I = 0x0

.field public static final SPITEP_VALUE_NS_1:I = 0x1

.field public static final SPITEP_VALUE_NS_2:I = 0x2

.field public static final SPITEP_VALUE_NS_3:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/bcast/AppStateManager;->Init:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ParserDomainIP(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 13

    const/4 v12, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "IPAddress"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move-object v0, v3

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    aget-byte v1, v5, v6

    and-int/lit16 v8, v1, 0xff

    add-int v1, v8, v6

    add-int/lit8 v1, v1, 0x1

    array-length v9, v5

    if-gt v1, v9, :cond_0

    div-int/lit8 v9, v8, 0x4

    if-lez v9, :cond_2

    filled-new-array {v9, v12}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_2
    if-ge v1, v9, :cond_2

    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v11, v1, 0x4

    add-int/2addr v10, v11

    aget-object v11, v0, v1

    invoke-static {v5, v10, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v8, 0x1

    add-int/2addr v1, v6

    new-instance v6, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;

    invoke-direct {v6}, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;-><init>()V

    iput-object v7, v6, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->name:Ljava/lang/String;

    iput-object v0, v6, Lcom/taobao/securityjni/bcast/AppStateManager$DoaminIP;->ip:[[B

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method public static final SendDNSBroadCast(Landroid/content/Context;II[B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "setaobao.bbox.DNS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "DNSinfolocal"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "DNSinfonet"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "IPAddress"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "com.setaobao.bbox.permission.APP_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final SendRTBroadCast(Landroid/content/Context;I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, -0x1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "setaobao.bbox.RT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "RTinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.setaobao.bbox.permission.APP_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final SendSPITEPBroadCast(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "setaobao.bbox.SPITEP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "SPITEPinfo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.setaobao.bbox.permission.APP_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
