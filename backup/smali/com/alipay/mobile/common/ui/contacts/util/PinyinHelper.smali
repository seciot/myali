.class public Lcom/alipay/mobile/common/ui/contacts/util/PinyinHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toHanyuPinyinStringArray(C)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->getInstance()Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/ui/contacts/util/ChineseToPinyinResource;->getHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
