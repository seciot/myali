.class public Lcom/taobao/securityjni/errorcode/SErrMap;
.super Ljava/lang/Object;


# static fields
.field public static final DYNAMIC_NOT_STORE_KEYVALUE:I = -0xd4

.field public static final INVALID_PARAM:I = -0x2

.field public static final PUBKEY_NOT_EQUAL:I = -0x68

.field public static final SFILE_VERSION_ERROR:I = -0x12e

.field public static final STATIC_EXTRAFUNC_NO_KEY:I = -0x6e

.field public static final STATIC_NOT_STORE_VALUE:I = -0x6f

.field public static final SYS_ERROR:I = 0x1

.field public static final SYS_MAP:Landroid/util/SparseArray; = null

.field public static final USER_ERROR:I = 0x2

.field public static final USER_MAP:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->SYS_MAP:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->SYS_MAP:Landroid/util/SparseArray;

    const/16 v1, -0x68

    const-string/jumbo v2, "Have No Value For Key: May public key error ,so you must recreate filejpg,or replace debugkeystore with right one"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->SYS_MAP:Landroid/util/SparseArray;

    const/16 v1, -0x12e

    const-string/jumbo v2, "Data NULL: May filejpg version error,recreate new one with the new version of the tool"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    const/16 v1, -0x6f

    const-string/jumbo v2, "Get Value NULL: May you don\'t store this value"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    const/16 v1, -0x6e

    const-string/jumbo v2, "Get Extra Data With No Key"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    const/4 v1, -0x2

    const-string/jumbo v2, "Inalid Parameters: May your input is null or illegal"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    const/16 v1, -0xd4

    const-string/jumbo v2, "DynamicStore do not store this key-value:May the key you passed is wrong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetErrorDescption(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->SYS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static GetErrorKind(I)I
    .locals 1

    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->SYS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/taobao/securityjni/errorcode/SErrMap;->USER_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
