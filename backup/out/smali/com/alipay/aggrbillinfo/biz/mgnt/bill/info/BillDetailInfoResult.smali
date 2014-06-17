.class public Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;


# instance fields
.field public billMonthInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;

    invoke-direct {v0}, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfoResult;->billMonthInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;

    return-void
.end method


# virtual methods
.method public getBillMonthInfo()Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfoResult;->billMonthInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;

    return-object v0
.end method

.method public setBillMonthInfo(Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfoResult;->billMonthInfo:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillMonthInfo;

    return-void
.end method
