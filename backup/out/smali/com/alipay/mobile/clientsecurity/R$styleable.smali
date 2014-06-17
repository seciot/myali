.class public final Lcom/alipay/mobile/clientsecurity/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/clientsecurity/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->c:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x30010002

    aput v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/clientsecurity/R$styleable;->d:[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x1t 0x30t
        0x4t 0x0t 0x1t 0x30t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x30t
        0x1t 0x0t 0x1t 0x30t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x30t
        0x1t 0x0t 0x1t 0x30t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
