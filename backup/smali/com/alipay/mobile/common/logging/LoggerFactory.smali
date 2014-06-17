.class public Lcom/alipay/mobile/common/logging/LoggerFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/LoggerFactory;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/Logger;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/logging/Logger;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/Logger;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/common/logging/LoggerFactory;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
