.class public final Lcom/alipay/mobile/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/a/g;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/a/g;->b:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x73010002

    aput v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/a/g;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x73t
        0x1t 0x0t 0x1t 0x73t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x73t
        0x1t 0x0t 0x1t 0x73t
    .end array-data
.end method
