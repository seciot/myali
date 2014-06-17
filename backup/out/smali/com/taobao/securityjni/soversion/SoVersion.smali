.class public Lcom/taobao/securityjni/soversion/SoVersion;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "3bc2d7714f48acdcaa5e63ebe61724d600cc8f031a20c80cf96e24723002df32"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "66ce59f797e3a51cfd04f6bd9d0560c915c39b664700bbdab2e54f631412619d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "d4bfa83d14186b64fcb02875d53e6267a6f22ea1193ce229cfa16543ef0d93ea"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bdaa6e3d1402c433a1abb7e46dc972863578a37349ae02242dd71351fcf2a36e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/securityjni/soversion/SoVersion;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.2.9.4"

    return-object v0
.end method
