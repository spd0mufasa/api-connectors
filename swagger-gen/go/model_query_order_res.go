/*
 * Bybit API
 *
 * ## REST API for the Bybit Exchange. 
 *
 * API version: 1.0.0
 * Contact: support@bybit.com
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */

package swagger

// Query real-time active order information response
type QueryOrderRes struct {
	OrderId string `json:"order_id,omitempty"`
	UserId float32 `json:"user_id,omitempty"`
	Symbol string `json:"symbol,omitempty"`
	Side string `json:"side,omitempty"`
	OrderType string `json:"order_type,omitempty"`
	Price float64 `json:"price,omitempty"`
	Qty string `json:"qty,omitempty"`
	TimeInForce string `json:"time_in_force,omitempty"`
	OrderStatus string `json:"order_status,omitempty"`
	ExtFields *interface{} `json:"ext_fields,omitempty"`
	LeavesQty float32 `json:"leaves_qty,omitempty"`
	LeavesValue float32 `json:"leaves_value,omitempty"`
	CumExecQty float32 `json:"cum_exec_qty,omitempty"`
	RejectReason string `json:"reject_reason,omitempty"`
	OrderLinkId string `json:"order_link_id,omitempty"`
	CreatedAt string `json:"created_at,omitempty"`
	UpdatedAt string `json:"updated_at,omitempty"`
}