.class public final enum Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/securitycommon/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImagePlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

.field public static final enum Default:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

.field public static final enum Grid:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

.field public static final enum Post:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;


# instance fields
.field public longHeight:Ljava/lang/String;

.field public longWidth:Ljava/lang/String;

.field public normal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    const-string/jumbo v1, "Post"

    const-string/jumbo v3, ".336x336.jpg"

    const-string/jumbo v4, ".336x112xz.jpg"

    const-string/jumbo v5, ".112x336xz.jpg"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Post:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    new-instance v3, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    const-string/jumbo v4, "Default"

    const-string/jumbo v6, ".320x320.jpg"

    const-string/jumbo v7, ".160x240xz.jpg"

    const-string/jumbo v8, ".160x240xz.jpg"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Default:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    new-instance v3, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    const-string/jumbo v4, "Grid"

    const-string/jumbo v6, ".180x180.jpg"

    const-string/jumbo v7, ".160x240xz.jpg"

    const-string/jumbo v8, ".160x240xz.jpg"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Grid:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Post:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Default:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->Grid:Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    aput-object v1, v0, v10

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->$VALUES:[Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, ".336x336.jpg"

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->normal:Ljava/lang/String;

    const-string/jumbo v0, ".336x112xz.jpg"

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->longWidth:Ljava/lang/String;

    const-string/jumbo v0, ".112x336xz.jpg"

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->longHeight:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->normal:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->longHeight:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->longWidth:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->$VALUES:[Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/securitycommon/ImageUtils$ImagePlot;

    return-object v0
.end method
